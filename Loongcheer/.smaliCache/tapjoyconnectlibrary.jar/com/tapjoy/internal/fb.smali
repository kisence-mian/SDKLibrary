.class public final Lcom/tapjoy/internal/fb;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fb$b;,
        Lcom/tapjoy/internal/fb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/fb;",
        "Lcom/tapjoy/internal/fb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/fb;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/tapjoy/internal/fb$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fb$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fb;->c:Lcom/tapjoy/internal/ek;

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fb;->d:Ljava/lang/Integer;

    .line 40
    sput-object v0, Lcom/tapjoy/internal/fb;->e:Ljava/lang/Integer;

    .line 42
    sput-object v0, Lcom/tapjoy/internal/fb;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V
    .registers 23

    .line 176
    move-object v0, p0

    sget-object v1, Lcom/tapjoy/internal/fb;->c:Lcom/tapjoy/internal/ek;

    move-object/from16 v2, p19

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 177
    move-object v1, p1

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    .line 178
    move-object v1, p2

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    .line 179
    move-object v1, p3

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->i:Ljava/lang/String;

    .line 180
    move-object v1, p4

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->j:Ljava/lang/String;

    .line 181
    move-object v1, p5

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->k:Ljava/lang/String;

    .line 182
    move-object v1, p6

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->l:Ljava/lang/String;

    .line 183
    move-object v1, p7

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    .line 184
    move-object v1, p8

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    .line 185
    move-object v1, p9

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    .line 186
    move-object v1, p10

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->p:Ljava/lang/String;

    .line 187
    move-object v1, p11

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    .line 188
    move-object v1, p12

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    .line 189
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    .line 190
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->t:Ljava/lang/String;

    .line 191
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    .line 192
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    .line 193
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    .line 194
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    .line 195
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 225
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/fb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 226
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/fb;

    .line 227
    invoke-virtual {p0}, Lcom/tapjoy/internal/fb;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/fb;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    .line 228
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    .line 229
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->i:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->i:Ljava/lang/String;

    .line 230
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->j:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->j:Ljava/lang/String;

    .line 231
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->k:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->k:Ljava/lang/String;

    .line 232
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->l:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->l:Ljava/lang/String;

    .line 233
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    .line 234
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    .line 235
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    .line 236
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->p:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->p:Ljava/lang/String;

    .line 237
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    .line 238
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    .line 239
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    .line 240
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->t:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->t:Ljava/lang/String;

    .line 241
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    .line 242
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    .line 243
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    .line 244
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    .line 245
    invoke-static {v3, v1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    return v0

    :cond_d0
    nop

    .line 227
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 250
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 251
    if-nez v0, :cond_f7

    .line 252
    invoke-virtual {p0}, Lcom/tapjoy/internal/fb;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 253
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    .line 254
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    .line 255
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->i:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    add-int/2addr v0, v1

    .line 256
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->j:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    add-int/2addr v0, v1

    .line 257
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->k:Ljava/lang/String;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    add-int/2addr v0, v1

    .line 258
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->l:Ljava/lang/String;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    add-int/2addr v0, v1

    .line 259
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    :goto_67
    add-int/2addr v0, v1

    .line 260
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_74

    :cond_73
    const/4 v1, 0x0

    :goto_74
    add-int/2addr v0, v1

    .line 261
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_81

    :cond_80
    const/4 v1, 0x0

    :goto_81
    add-int/2addr v0, v1

    .line 262
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->p:Ljava/lang/String;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8e

    :cond_8d
    const/4 v1, 0x0

    :goto_8e
    add-int/2addr v0, v1

    .line 263
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    :goto_9b
    add-int/2addr v0, v1

    .line 264
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a8

    :cond_a7
    const/4 v1, 0x0

    :goto_a8
    add-int/2addr v0, v1

    .line 265
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b5

    :cond_b4
    const/4 v1, 0x0

    :goto_b5
    add-int/2addr v0, v1

    .line 266
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->t:Ljava/lang/String;

    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c2

    :cond_c1
    const/4 v1, 0x0

    :goto_c2
    add-int/2addr v0, v1

    .line 267
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_cf

    :cond_ce
    const/4 v1, 0x0

    :goto_cf
    add-int/2addr v0, v1

    .line 268
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    if-eqz v1, :cond_db

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_dc

    :cond_db
    const/4 v1, 0x0

    :goto_dc
    add-int/2addr v0, v1

    .line 269
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    if-eqz v1, :cond_e8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e9

    :cond_e8
    const/4 v1, 0x0

    :goto_e9
    add-int/2addr v0, v1

    .line 270
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    if-eqz v1, :cond_f4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_f4
    add-int/2addr v0, v2

    .line 271
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 273
    :cond_f7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_14
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_23
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->i:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", deviceMaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_32
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->j:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_41
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->k:Ljava/lang/String;

    if-eqz v1, :cond_50

    const-string v1, ", osName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_50
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->l:Ljava/lang/String;

    if-eqz v1, :cond_5f

    const-string v1, ", osVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_5f
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", displayD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    :cond_6e
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7d

    const-string v1, ", displayW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    :cond_7d
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_8c

    const-string v1, ", displayH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    :cond_8c
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->p:Ljava/lang/String;

    if-eqz v1, :cond_9b

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_9b
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    if-eqz v1, :cond_aa

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_aa
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    if-eqz v1, :cond_b9

    const-string v1, ", pkgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_b9
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    if-eqz v1, :cond_c8

    const-string v1, ", pkgSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_c8
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->t:Ljava/lang/String;

    if-eqz v1, :cond_d7

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_d7
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    if-eqz v1, :cond_e6

    const-string v1, ", countrySim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_e6
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    if-eqz v1, :cond_f5

    const-string v1, ", countryNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_f5
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    if-eqz v1, :cond_104

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_104
    iget-object v1, p0, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    if-eqz v1, :cond_113

    const-string v1, ", androidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fb;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_113
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Info{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
