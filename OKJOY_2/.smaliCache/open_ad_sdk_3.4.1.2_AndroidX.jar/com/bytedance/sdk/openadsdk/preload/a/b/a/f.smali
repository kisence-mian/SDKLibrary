.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;
.super Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
.source "JsonTreeWriter.java"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/bytedance/sdk/openadsdk/preload/a/q;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/preload/a/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a:Ljava/io/Writer;

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->b:Lcom/bytedance/sdk/openadsdk/preload/a/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->e:Lcom/bytedance/sdk/openadsdk/preload/a/l;

    .line 60
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 79
    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 82
    :cond_1b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    goto :goto_37

    .line 83
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->e:Lcom/bytedance/sdk/openadsdk/preload/a/l;

    goto :goto_37

    .line 86
    :cond_2a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v1, :cond_38

    .line 88
    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 93
    :goto_37
    return-void

    .line 90
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private j()Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 184
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    if-nez p1, :cond_7

    .line 168
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 170
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 171
    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    if-nez p1, :cond_7

    .line 189
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 192
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_37

    .line 193
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_37

    .line 195
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_37
    :goto_37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 200
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_25

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 140
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 141
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v0, :cond_19

    .line 142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    .line 143
    return-object p0

    .line 145
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 138
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 135
    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 163
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->e:Lcom/bytedance/sdk/openadsdk/preload/a/l;

    return-object v0

    .line 67
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/i;-><init>()V

    .line 97
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-nez p1, :cond_7

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p1

    return-object p1

    .line 152
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 153
    return-object p0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 106
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 107
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v0, :cond_20

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    return-object p0

    .line 111
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 104
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->b:Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void

    .line 208
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/o;-><init>()V

    .line 116
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object p0
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->d:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 125
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->j()Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v0

    .line 126
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v0, :cond_20

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    return-object p0

    .line 130
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 158
    return-object p0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    return-void
.end method
