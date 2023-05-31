.class public final Lcom/mintegral/msdk/base/entity/c;
.super Ljava/lang/Object;
.source "ClickTime.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .registers 19

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/mintegral/msdk/base/entity/c;->b:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/mintegral/msdk/base/entity/c;->c:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/mintegral/msdk/base/entity/c;->d:Ljava/lang/String;

    .line 57
    iput p5, p0, Lcom/mintegral/msdk/base/entity/c;->e:I

    .line 58
    iput-object p6, p0, Lcom/mintegral/msdk/base/entity/c;->f:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/mintegral/msdk/base/entity/c;->g:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/mintegral/msdk/base/entity/c;->h:Ljava/lang/String;

    .line 61
    iput p9, p0, Lcom/mintegral/msdk/base/entity/c;->i:I

    .line 62
    iput p10, p0, Lcom/mintegral/msdk/base/entity/c;->j:I

    .line 63
    iput-object p11, p0, Lcom/mintegral/msdk/base/entity/c;->k:Ljava/lang/String;

    .line 64
    iput p12, p0, Lcom/mintegral/msdk/base/entity/c;->l:I

    .line 65
    iput p13, p0, Lcom/mintegral/msdk/base/entity/c;->m:I

    .line 66
    iput-object p14, p0, Lcom/mintegral/msdk/base/entity/c;->n:Ljava/lang/String;

    .line 67
    move/from16 v0, p15

    iput v0, p0, Lcom/mintegral/msdk/base/entity/c;->o:I

    .line 68
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->p:Ljava/lang/String;

    .line 69
    move/from16 v0, p16

    iput v0, p0, Lcom/mintegral/msdk/base/entity/c;->q:I

    .line 70
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 258
    if-eqz p0, :cond_2bd

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2bd

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/c;

    .line 261
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_general_data"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_185

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rid_n="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1242
    iget-object v4, v0, Lcom/mintegral/msdk/base/entity/c;->a:Ljava/lang/String;

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&network_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2114
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->o:I

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&network_str="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2122
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->p:Ljava/lang/String;

    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&cid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2218
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->b:Ljava/lang/String;

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&click_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3162
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->j:I

    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3202
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->i:I

    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&click_duration="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3226
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->c:Ljava/lang/String;

    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&key=2000013"

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&unit_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4130
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->k:Ljava/lang/String;

    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&last_url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4210
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->d:Ljava/lang/String;

    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&content="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5194
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->h:Ljava/lang/String;

    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6178
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->e:I

    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7170
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->f:Ljava/lang/String;

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&header="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7186
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->g:Ljava/lang/String;

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&landing_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8138
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->l:I

    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&link_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8146
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->m:I

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&click_time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8154
    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/c;->n:Ljava/lang/String;

    .line 277
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 279
    :cond_185
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rid_n="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8242
    iget-object v4, v0, Lcom/mintegral/msdk/base/entity/c;->a:Ljava/lang/String;

    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&cid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9218
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->b:Ljava/lang/String;

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&click_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10162
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->j:I

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10202
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->i:I

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&click_duration="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10226
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->c:Ljava/lang/String;

    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&key=2000013"

    .line 284
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&unit_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11130
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->k:Ljava/lang/String;

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&last_url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11210
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->d:Ljava/lang/String;

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&content="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12194
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->h:Ljava/lang/String;

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13178
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->e:I

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14170
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->f:Ljava/lang/String;

    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&header="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14186
    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/c;->g:Ljava/lang/String;

    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&landing_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15138
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->l:I

    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&link_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15146
    iget v5, v0, Lcom/mintegral/msdk/base/entity/c;->m:I

    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&click_time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15154
    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/c;->n:Ljava/lang/String;

    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 295
    :cond_2b8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_2bc
    return-object v0

    :cond_2bd
    const/4 v0, 0x0

    goto :goto_2bc
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/mintegral/msdk/base/entity/c;->o:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 118
    iput p1, p0, Lcom/mintegral/msdk/base/entity/c;->o:I

    .line 119
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->p:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 142
    iput p1, p0, Lcom/mintegral/msdk/base/entity/c;->l:I

    .line 143
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->k:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    .prologue
    .line 150
    iput p1, p0, Lcom/mintegral/msdk/base/entity/c;->m:I

    .line 151
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->n:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/mintegral/msdk/base/entity/c;->l:I

    return v0
.end method

.method public final d(I)V
    .registers 3

    .prologue
    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/base/entity/c;->j:I

    .line 167
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->f:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/mintegral/msdk/base/entity/c;->m:I

    return v0
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 182
    iput p1, p0, Lcom/mintegral/msdk/base/entity/c;->e:I

    .line 183
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->g:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 206
    iput p1, p0, Lcom/mintegral/msdk/base/entity/c;->i:I

    .line 207
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->h:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/mintegral/msdk/base/entity/c;->j:I

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->d:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->b:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/mintegral/msdk/base/entity/c;->e:I

    return v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->c:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/mintegral/msdk/base/entity/c;->i:I

    return v0
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/c;->a:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClickTime [campaignId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/base/entity/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", click_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/entity/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/entity/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/base/entity/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excepiton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/entity/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/entity/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/entity/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/base/entity/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", click_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/base/entity/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
