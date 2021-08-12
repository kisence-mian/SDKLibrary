.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/d;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;


# instance fields
.field private b:D

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b:D

    .line 56
    const/16 v0, 0x88

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->c:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->d:Z

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->f:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->g:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/a/d;)Z
    .registers 6

    .line 243
    if-eqz p1, :cond_e

    .line 244
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/a/d;->a()D

    move-result-wide v0

    .line 245
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_e

    .line 246
    const/4 p1, 0x0

    return p1

    .line 249
    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/a/d;Lcom/bytedance/sdk/openadsdk/preload/a/a/e;)Z
    .registers 3

    .line 239
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/a/d;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/a/e;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/a/e;)Z
    .registers 6

    .line 253
    if-eqz p1, :cond_e

    .line 254
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/a/e;->a()D

    move-result-wide v0

    .line 255
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_e

    .line 256
    const/4 p1, 0x0

    return p1

    .line 259
    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 195
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/d;

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/a/a/e;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/a/a/e;

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/a/d;Lcom/bytedance/sdk/openadsdk/preload/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 196
    return v1

    .line 199
    :cond_20
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->d:Z

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 200
    return v1

    .line 203
    :cond_2b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 204
    return v1

    .line 207
    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 226
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 227
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 226
    :goto_17
    return p1
.end method

.method private b(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 216
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->f:Ljava/util/List;

    goto :goto_7

    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->g:Ljava/util/List;

    .line 217
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/b;

    .line 218
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 219
    const/4 p1, 0x1

    return p1

    .line 221
    :cond_1f
    goto :goto_b

    .line 222
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->d(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private d(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method protected a()Lcom/bytedance/sdk/openadsdk/preload/a/b/d;
    .registers 3

    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 65
    :catch_7
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 113
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v1

    .line 116
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_15

    :cond_13
    move v8, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v8, v3

    .line 117
    :goto_16
    if-nez v1, :cond_21

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v7, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v7, v3

    .line 119
    :goto_22
    if-nez v8, :cond_28

    if-nez v7, :cond_28

    .line 120
    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/d;ZZLcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b(Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 211
    :goto_10
    return p1
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .registers 9

    .line 153
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 154
    return v1

    .line 157
    :cond_b
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2a

    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/d;

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/d;

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/a/a/e;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/a/a/e;

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/a/d;Lcom/bytedance/sdk/openadsdk/preload/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 159
    return v1

    .line 162
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 163
    return v1

    .line 166
    :cond_31
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->e:Z

    if-eqz v0, :cond_4f

    .line 167
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/a;

    .line 168
    if-eqz v0, :cond_4e

    if-eqz p2, :cond_48

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_4e

    :cond_48
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 169
    :cond_4e
    :goto_4e
    return v1

    .line 173
    :cond_4f
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->d:Z

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 174
    return v1

    .line 177
    :cond_5e
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 178
    return v1

    .line 181
    :cond_69
    if-eqz p2, :cond_6e

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->f:Ljava/util/List;

    goto :goto_70

    :cond_6e
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->g:Ljava/util/List;

    .line 182
    :goto_70
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    .line 183
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/c;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/c;-><init>(Ljava/lang/reflect/Field;)V

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/preload/a/b;

    .line 185
    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 186
    return v1

    .line 188
    :cond_92
    goto :goto_7f

    .line 191
    :cond_93
    const/4 p1, 0x0

    return p1
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a()Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    move-result-object v0

    return-object v0
.end method
