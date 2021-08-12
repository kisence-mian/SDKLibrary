.class public final Lcom/tencent/bugly/proguard/as;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static m:Lcom/tencent/bugly/proguard/ar;

.field private static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic o:Z


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/tencent/bugly/proguard/ar;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:J

.field public i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/as;->o:Z

    .line 270
    new-instance v0, Lcom/tencent/bugly/proguard/ar;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ar;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/as;->m:Lcom/tencent/bugly/proguard/ar;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/as;->n:Ljava/util/Map;

    .line 275
    nop

    .line 276
    nop

    .line 277
    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 166
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/as;->a:Z

    .line 23
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/as;->b:Z

    .line 25
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/as;->c:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    .line 33
    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    .line 35
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/as;->h:J

    .line 37
    iput-object v0, p0, Lcom/tencent/bugly/proguard/as;->j:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/tencent/bugly/proguard/as;->k:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/as;->l:I

    .line 43
    iput v0, p0, Lcom/tencent/bugly/proguard/as;->i:I

    .line 167
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .registers 6

    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/as;->a:Z

    .line 283
    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/i;->a(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/as;->b:Z

    .line 284
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/as;->c:Z

    .line 285
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    .line 286
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    .line 287
    sget-object v1, Lcom/tencent/bugly/proguard/as;->m:Lcom/tencent/bugly/proguard/ar;

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/ar;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    .line 288
    sget-object v1, Lcom/tencent/bugly/proguard/as;->n:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    .line 289
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/as;->h:J

    const/4 v3, 0x7

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/as;->h:J

    .line 290
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->j:Ljava/lang/String;

    .line 291
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/as;->k:Ljava/lang/String;

    .line 292
    iget v1, p0, Lcom/tencent/bugly/proguard/as;->l:I

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v1

    iput v1, p0, Lcom/tencent/bugly/proguard/as;->l:I

    .line 293
    iget v1, p0, Lcom/tencent/bugly/proguard/as;->i:I

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/as;->i:I

    .line 294
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .registers 5

    .line 236
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/as;->a:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(ZI)V

    .line 237
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/as;->b:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(ZI)V

    .line 238
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/as;->c:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(ZI)V

    .line 239
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 241
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 243
    :cond_1a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 245
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 247
    :cond_22
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    if-eqz v0, :cond_2a

    .line 249
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/k;I)V

    .line 251
    :cond_2a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    if-eqz v0, :cond_32

    .line 253
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 255
    :cond_32
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/as;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    .line 256
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->j:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 258
    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 260
    :cond_41
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->k:Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 262
    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 264
    :cond_4a
    iget v0, p0, Lcom/tencent/bugly/proguard/as;->l:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 265
    iget v0, p0, Lcom/tencent/bugly/proguard/as;->i:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 266
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .registers 5

    .line 298
    new-instance v0, Lcom/tencent/bugly/proguard/h;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 299
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/as;->a:Z

    const-string p2, "enable"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 300
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/as;->b:Z

    const-string p2, "enableUserInfo"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 301
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/as;->c:Z

    const-string p2, "enableQuery"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 302
    iget-object p1, p0, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    const-string p2, "url"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 303
    iget-object p1, p0, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    const-string p2, "expUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 304
    iget-object p1, p0, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    const-string p2, "security"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 305
    iget-object p1, p0, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    const-string p2, "valueMap"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 306
    iget-wide p1, p0, Lcom/tencent/bugly/proguard/as;->h:J

    const-string v1, "strategylastUpdateTime"

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/bugly/proguard/h;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 307
    iget-object p1, p0, Lcom/tencent/bugly/proguard/as;->j:Ljava/lang/String;

    const-string p2, "httpsUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 308
    iget-object p1, p0, Lcom/tencent/bugly/proguard/as;->k:Ljava/lang/String;

    const-string p2, "httpsExpUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 309
    iget p1, p0, Lcom/tencent/bugly/proguard/as;->l:I

    const-string p2, "eventRecordCount"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 310
    iget p1, p0, Lcom/tencent/bugly/proguard/as;->i:I

    const-string p2, "eventTimeInterval"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 311
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    .line 222
    nop

    .line 225
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_5} :catch_6

    .line 230
    goto :goto_c

    .line 227
    :catch_6
    move-exception v0

    .line 229
    sget-boolean v0, Lcom/tencent/bugly/proguard/as;->o:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 231
    :goto_c
    return-object v0

    .line 229
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 187
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 189
    return v0

    .line 192
    :cond_4
    nop

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, Lcom/tencent/bugly/proguard/as;

    .line 193
    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/as;->a:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/as;->a:Z

    .line 194
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/as;->b:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/as;->b:Z

    .line 195
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/as;->c:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/as;->c:Z

    .line 196
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    .line 197
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    .line 198
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    .line 199
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    .line 200
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/as;->h:J

    iget-wide v3, p1, Lcom/tencent/bugly/proguard/as;->h:J

    .line 201
    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/l;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/as;->j:Ljava/lang/String;

    .line 202
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/as;->k:Ljava/lang/String;

    .line 203
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget v1, p0, Lcom/tencent/bugly/proguard/as;->l:I

    iget v2, p1, Lcom/tencent/bugly/proguard/as;->l:I

    .line 204
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/l;->a(II)Z

    move-result v1

    if-eqz v1, :cond_81

    .end local p0    # "this":Lcom/tencent/bugly/proguard/as;
    iget v1, p0, Lcom/tencent/bugly/proguard/as;->i:I

    iget p1, p1, Lcom/tencent/bugly/proguard/as;->i:I

    .line 205
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/l;->a(II)Z

    move-result p1

    if-eqz p1, :cond_81

    const/4 p1, 0x1

    return p1

    :cond_81
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    .line 214
    :catch_8
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const/4 v0, 0x0

    return v0
.end method
