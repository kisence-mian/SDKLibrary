.class public final Lcom/anythink/myoffer/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/anythink/myoffer/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:J

.field private D:I

.field public a:I

.field public b:J

.field c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    new-instance v0, Lcom/anythink/myoffer/c/a$1;

    invoke-direct {v0}, Lcom/anythink/myoffer/c/a$1;-><init>()V

    sput-object v0, Lcom/anythink/myoffer/c/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->d:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->e:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->f:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->g:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->h:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->i:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->j:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->k:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->l:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->m:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/a;->n:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->o:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->p:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->q:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->r:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->s:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->t:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->u:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->v:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->w:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->x:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->y:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->z:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->A:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/c/a;->B:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/a;->a:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/myoffer/c/a;->b:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/myoffer/c/a;->C:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/a;->c:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/a;->D:I

    .line 78
    return-void
.end method

.method private E()I
    .registers 2

    .prologue
    .line 332
    iget v0, p0, Lcom/anythink/myoffer/c/a;->a:I

    return v0
.end method

.method private F()J
    .registers 3

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/anythink/myoffer/c/a;->b:J

    return-wide v0
.end method

.method private b(J)V
    .registers 4

    .prologue
    .line 344
    iput-wide p1, p0, Lcom/anythink/myoffer/c/a;->b:J

    .line 345
    return-void
.end method

.method private d(I)V
    .registers 2

    .prologue
    .line 336
    iput p1, p0, Lcom/anythink/myoffer/c/a;->a:I

    .line 337
    return-void
.end method


# virtual methods
.method public final A()J
    .registers 3

    .prologue
    .line 356
    iget-wide v0, p0, Lcom/anythink/myoffer/c/a;->C:J

    return-wide v0
.end method

.method public final B()I
    .registers 2

    .prologue
    .line 365
    iget v0, p0, Lcom/anythink/myoffer/c/a;->c:I

    return v0
.end method

.method public final C()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 384
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_12
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 388
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1f
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 395
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_2c
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 399
    iget-object v1, p0, Lcom/anythink/myoffer/c/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_39
    return-object v0
.end method

.method public final D()Z
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final a()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/anythink/myoffer/c/a;->D:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 136
    iput p1, p0, Lcom/anythink/myoffer/c/a;->D:I

    .line 137
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 360
    iput-wide p1, p0, Lcom/anythink/myoffer/c/a;->C:J

    .line 361
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->d:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 224
    iput p1, p0, Lcom/anythink/myoffer/c/a;->n:I

    .line 225
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->e:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    .prologue
    .line 369
    iput p1, p0, Lcom/anythink/myoffer/c/a;->c:I

    .line 370
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->f:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->g:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final describeContents()I
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->h:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->i:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->j:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->k:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->l:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->m:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->o:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public final l()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/anythink/myoffer/c/a;->n:I

    return v0
.end method

.method public final l(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->p:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->q:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->r:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->t:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->u:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->v:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->w:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->x:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->y:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->z:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final v(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->A:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final w(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->B:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/anythink/myoffer/c/a;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/anythink/myoffer/c/a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-wide v0, p0, Lcom/anythink/myoffer/c/a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-wide v0, p0, Lcom/anythink/myoffer/c/a;->C:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget v0, p0, Lcom/anythink/myoffer/c/a;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/anythink/myoffer/c/a;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final x(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/anythink/myoffer/c/a;->s:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/anythink/myoffer/c/a;->s:Ljava/lang/String;

    return-object v0
.end method
