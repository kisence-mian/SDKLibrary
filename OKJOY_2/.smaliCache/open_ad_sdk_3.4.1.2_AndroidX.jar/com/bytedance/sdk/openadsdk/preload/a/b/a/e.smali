.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;
.super Lcom/bytedance/sdk/openadsdk/preload/a/d/a;
.source "JsonTreeReader.java"


# static fields
.field private static final b:Ljava/io/Reader;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:[Ljava/lang/String;

.field private g:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->b:Ljava/io/Reader;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 166
    return-void

    .line 163
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but was "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/Object;)V
    .registers 5

    .line 286
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_21

    .line 287
    mul-int/lit8 v0, v0, 0x2

    .line 288
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    .line 290
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    .line 292
    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    aput-object p1, v0, v1

    .line 293
    return-void
.end method

.method private t()Ljava/lang/Object;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private u()Ljava/lang/Object;
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    aget-object v2, v0, v1

    .line 157
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 158
    return-object v2
.end method

.method private v()Ljava/lang/String;
    .registers 3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 77
    return-void
.end method

.method public b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 83
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_19

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 86
    :cond_19
    return-void
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->c:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 90
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    .line 255
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    .line 256
    return-void
.end method

.method public d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 96
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 98
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_19

    .line 99
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 101
    :cond_19
    return-void
.end method

.method public e()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-nez v0, :cond_7

    .line 110
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->j:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 113
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_3a

    .line 115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    .line 116
    check-cast v0, Ljava/util/Iterator;

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 118
    if-eqz v1, :cond_26

    .line 119
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 121
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    return-object v0

    .line 125
    :cond_32
    if-eqz v1, :cond_37

    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    goto :goto_39

    :cond_37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    :goto_39
    return-object v0

    .line 127
    :cond_3a
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v1, :cond_41

    .line 128
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->c:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 129
    :cond_41
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v1, :cond_48

    .line 130
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 131
    :cond_48
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    if-eqz v1, :cond_6f

    .line 132
    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    .line 133
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->p()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 134
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 135
    :cond_57
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->n()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 136
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->h:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 137
    :cond_60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 138
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 140
    :cond_69
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_6f
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;

    if-eqz v1, :cond_76

    .line 143
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 144
    :cond_76
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_82

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_82
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 170
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 175
    return-object v1
.end method

.method public h()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_3a

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_3a

    .line 181
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v1, :cond_52

    .line 186
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 188
    :cond_52
    return-object v0
.end method

.method public i()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->h:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 193
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->f()Z

    move-result v0

    .line 194
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v1, :cond_1d

    .line 195
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 197
    :cond_1d
    return v0
.end method

.method public j()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 202
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 203
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_16

    .line 204
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 206
    :cond_16
    return-void
.end method

.method public k()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_3a

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_3a

    .line 211
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->c()D

    move-result-wide v0

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->q()Z

    move-result v2

    if-nez v2, :cond_70

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_70

    .line 216
    :cond_57
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_70
    :goto_70
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 219
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v2, :cond_81

    .line 220
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    .line 222
    :cond_81
    return-wide v0
.end method

.method public l()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_3a

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_3a

    .line 228
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->d()J

    move-result-wide v0

    .line 232
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 233
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v2, :cond_55

    .line 234
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    .line 236
    :cond_55
    return-wide v0
.end method

.method public m()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_3a

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_3a

    .line 242
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->e()I

    move-result v0

    .line 246
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 247
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v1, :cond_55

    .line 248
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 250
    :cond_55
    return v0
.end method

.method public n()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_16

    .line 260
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g()Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_23

    .line 263
    :cond_16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->u()Ljava/lang/Object;

    .line 264
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_23

    .line 265
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 268
    :cond_23
    :goto_23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-lez v0, :cond_31

    .line 269
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 271
    :cond_31
    return-void
.end method

.method public o()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/b;)V

    .line 279
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 282
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 5

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const/4 v1, 0x0

    :goto_c
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->e:I

    if-ge v1, v2, :cond_55

    .line 298
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->d:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v3, :cond_34

    .line 299
    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_52

    .line 300
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->g:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 302
    :cond_34
    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v3, :cond_52

    .line 303
    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_52

    .line 304
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->f:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_52

    .line 306
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 311
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
