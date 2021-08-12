.class public final Lcom/tencent/bugly/proguard/an;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"


# static fields
.field private static A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static w:Lcom/tencent/bugly/proguard/al;

.field private static x:Lcom/tencent/bugly/proguard/ak;

.field private static y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lcom/tencent/bugly/proguard/al;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/tencent/bugly/proguard/ak;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ak;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->v:Ljava/util/Map;

    .line 158
    nop

    .line 159
    nop

    .line 160
    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/al;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->w:Lcom/tencent/bugly/proguard/al;

    .line 168
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->x:Lcom/tencent/bugly/proguard/ak;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->y:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    .line 174
    sget-object v2, Lcom/tencent/bugly/proguard/an;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->z:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    .line 180
    sget-object v2, Lcom/tencent/bugly/proguard/an;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->A:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Lcom/tencent/bugly/proguard/am;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/am;-><init>()V

    .line 186
    sget-object v2, Lcom/tencent/bugly/proguard/an;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->B:Ljava/util/Map;

    .line 191
    nop

    .line 192
    nop

    .line 193
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/an;->C:Ljava/util/Map;

    .line 198
    nop

    .line 199
    nop

    .line 200
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 54
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->a:Ljava/lang/String;

    .line 13
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/an;->b:J

    .line 15
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->e:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->h:Ljava/util/Map;

    .line 27
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->i:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->j:Lcom/tencent/bugly/proguard/al;

    .line 31
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/bugly/proguard/an;->k:I

    .line 33
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->l:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->m:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->n:Lcom/tencent/bugly/proguard/ak;

    .line 39
    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->o:Ljava/util/ArrayList;

    .line 41
    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->p:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->q:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->r:Ljava/util/Map;

    .line 47
    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->s:Ljava/util/Map;

    .line 49
    iput-object v0, p0, Lcom/tencent/bugly/proguard/an;->t:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/an;->u:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .registers 6

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/an;->a:Ljava/lang/String;

    .line 206
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/an;->b:J

    invoke-virtual {p1, v2, v3, v1, v1}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/an;->b:J

    .line 207
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->c:Ljava/lang/String;

    .line 208
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    .line 209
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->e:Ljava/lang/String;

    .line 210
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    .line 211
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    .line 212
    sget-object v1, Lcom/tencent/bugly/proguard/an;->v:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->h:Ljava/util/Map;

    .line 213
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->i:Ljava/lang/String;

    .line 214
    sget-object v1, Lcom/tencent/bugly/proguard/an;->w:Lcom/tencent/bugly/proguard/al;

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/al;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->j:Lcom/tencent/bugly/proguard/al;

    .line 215
    iget v1, p0, Lcom/tencent/bugly/proguard/an;->k:I

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v1

    iput v1, p0, Lcom/tencent/bugly/proguard/an;->k:I

    .line 216
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->l:Ljava/lang/String;

    .line 217
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->m:Ljava/lang/String;

    .line 218
    sget-object v1, Lcom/tencent/bugly/proguard/an;->x:Lcom/tencent/bugly/proguard/ak;

    const/16 v2, 0xd

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/ak;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->n:Lcom/tencent/bugly/proguard/ak;

    .line 219
    sget-object v1, Lcom/tencent/bugly/proguard/an;->y:Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->o:Ljava/util/ArrayList;

    .line 220
    sget-object v1, Lcom/tencent/bugly/proguard/an;->z:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->p:Ljava/util/ArrayList;

    .line 221
    sget-object v1, Lcom/tencent/bugly/proguard/an;->A:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->q:Ljava/util/ArrayList;

    .line 222
    sget-object v1, Lcom/tencent/bugly/proguard/an;->B:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->r:Ljava/util/Map;

    .line 223
    sget-object v1, Lcom/tencent/bugly/proguard/an;->C:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->s:Ljava/util/Map;

    .line 224
    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/an;->t:Ljava/lang/String;

    .line 225
    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/an;->u:Z

    .line 226
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 85
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/an;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    .line 86
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 89
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 91
    :cond_1a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->e:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 93
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 95
    :cond_22
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 97
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 99
    :cond_2a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 101
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 103
    :cond_32
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->h:Ljava/util/Map;

    if-eqz v0, :cond_3a

    .line 105
    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 107
    :cond_3a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->i:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 109
    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 111
    :cond_43
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->j:Lcom/tencent/bugly/proguard/al;

    if-eqz v0, :cond_4c

    .line 113
    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/k;I)V

    .line 115
    :cond_4c
    iget v0, p0, Lcom/tencent/bugly/proguard/an;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 116
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->l:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 118
    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 120
    :cond_5c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->m:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 122
    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 124
    :cond_65
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->n:Lcom/tencent/bugly/proguard/ak;

    if-eqz v0, :cond_6e

    .line 126
    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/k;I)V

    .line 128
    :cond_6e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    .line 130
    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    .line 132
    :cond_77
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_80

    .line 134
    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    .line 136
    :cond_80
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_89

    .line 138
    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    .line 140
    :cond_89
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->r:Ljava/util/Map;

    if-eqz v0, :cond_92

    .line 142
    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 144
    :cond_92
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->s:Ljava/util/Map;

    if-eqz v0, :cond_9b

    .line 146
    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 148
    :cond_9b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->t:Ljava/lang/String;

    if-eqz v0, :cond_a4

    .line 150
    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 152
    :cond_a4
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/an;->u:Z

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(ZI)V

    .line 153
    return-void
.end method
