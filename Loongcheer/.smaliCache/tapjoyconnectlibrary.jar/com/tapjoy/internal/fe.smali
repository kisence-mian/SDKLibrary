.class public final Lcom/tapjoy/internal/fe;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fe$b;,
        Lcom/tapjoy/internal/fe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/fe;",
        "Lcom/tapjoy/internal/fe$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/fe;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Double;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Long;


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Double;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Long;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/tapjoy/internal/fe$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fe$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fe;->c:Lcom/tapjoy/internal/ek;

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fe;->d:Ljava/lang/Integer;

    .line 31
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fe;->e:Ljava/lang/Double;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fe;->f:Ljava/lang/Integer;

    .line 45
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fe;->g:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V
    .registers 19

    .line 145
    move-object v0, p0

    sget-object v1, Lcom/tapjoy/internal/fe;->c:Lcom/tapjoy/internal/ek;

    move-object/from16 v2, p15

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 146
    move-object v1, p1

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->h:Ljava/lang/String;

    .line 147
    move-object v1, p2

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    .line 148
    move-object v1, p3

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    .line 149
    move-object v1, p4

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    .line 150
    move-object v1, p5

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    .line 151
    move-object v1, p6

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    .line 152
    move-object v1, p7

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    .line 153
    move-object v1, p8

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    .line 154
    move-object v1, p9

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    .line 155
    move-object v1, p10

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    .line 156
    move-object v1, p11

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    .line 157
    move-object v1, p12

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    .line 158
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    .line 159
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 186
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/fe;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 187
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/fe;

    .line 188
    invoke-virtual {p0}, Lcom/tapjoy/internal/fe;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/fe;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->h:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->h:Ljava/lang/String;

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    .line 190
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    .line 191
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    .line 192
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    .line 193
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    .line 194
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    .line 195
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    .line 196
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    .line 197
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    .line 198
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    .line 199
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    .line 200
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    .line 201
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    .line 202
    invoke-static {v3, v1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    return v0

    :cond_a8
    nop

    .line 188
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 207
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 208
    if-nez v0, :cond_bf

    .line 209
    invoke-virtual {p0}, Lcom/tapjoy/internal/fe;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 210
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    add-int/2addr v0, v1

    .line 212
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    add-int/2addr v0, v1

    .line 213
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    add-int/2addr v0, v1

    .line 214
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    add-int/2addr v0, v1

    .line 216
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    add-int/2addr v0, v1

    .line 217
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_70

    :cond_6f
    const/4 v1, 0x0

    :goto_70
    add-int/2addr v0, v1

    .line 218
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    add-int/2addr v0, v1

    .line 219
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    add-int/2addr v0, v1

    .line 220
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    add-int/2addr v0, v1

    .line 221
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a4

    :cond_a3
    const/4 v1, 0x0

    :goto_a4
    add-int/2addr v0, v1

    .line 222
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b1

    :cond_b0
    const/4 v1, 0x0

    :goto_b1
    add-int/2addr v0, v1

    .line 223
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    if-eqz v1, :cond_bc

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_bc
    add-int/2addr v0, v2

    .line 224
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 226
    :cond_bf
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    const-string v1, ", productQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1f
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    if-eqz v1, :cond_2e

    const-string v1, ", productPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->j:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2e
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    if-eqz v1, :cond_3d

    const-string v1, ", productPriceCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_3d
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    if-eqz v1, :cond_4c

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_4c
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    if-eqz v1, :cond_5b

    const-string v1, ", productTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_5b
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    if-eqz v1, :cond_6a

    const-string v1, ", productDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_6a
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    if-eqz v1, :cond_79

    const-string v1, ", transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_79
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_88

    const-string v1, ", transactionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->p:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    :cond_88
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    if-eqz v1, :cond_97

    const-string v1, ", transactionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->q:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    :cond_97
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    if-eqz v1, :cond_a6

    const-string v1, ", campaignId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_a6
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    if-eqz v1, :cond_b5

    const-string v1, ", currencyPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_b5
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    if-eqz v1, :cond_c4

    const-string v1, ", receipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_c4
    iget-object v1, p0, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    if-eqz v1, :cond_d3

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fe;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_d3
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Purchase{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
