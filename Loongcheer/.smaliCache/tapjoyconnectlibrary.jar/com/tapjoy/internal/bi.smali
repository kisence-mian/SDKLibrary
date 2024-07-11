.class public abstract Lcom/tapjoy/internal/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bf;
.implements Lcom/tapjoy/internal/bk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/bi$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bi;
    .registers 2

    .line 29
    invoke-static {}, Lcom/tapjoy/internal/bi$a;->a()Lcom/tapjoy/internal/bi$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bi$a;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bi;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .registers 3

    .line 190
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->f()V

    .line 191
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 192
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->u()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 194
    :cond_11
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->g()V

    .line 195
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;
    .registers 2

    .line 37
    invoke-static {}, Lcom/tapjoy/internal/bi$a;->a()Lcom/tapjoy/internal/bi$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bi$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/net/URI;
    .registers 2

    .line 243
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 244
    :catch_6
    move-exception p0

    .line 245
    new-instance v0, Lcom/tapjoy/internal/bq;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private t()Z
    .registers 3

    .line 118
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_d

    .line 119
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->o()V

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private u()Ljava/lang/Object;
    .registers 4

    .line 158
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/tapjoy/internal/bi$1;->a:[I

    invoke-virtual {v0}, Lcom/tapjoy/internal/bn;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_48

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected a value but was "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :pswitch_1f
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :pswitch_24
    nop

    .line 1179
    new-instance v0, Lcom/tapjoy/internal/cd;

    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/cd;-><init>(Ljava/lang/String;)V

    .line 170
    return-object v0

    .line 168
    :pswitch_2f
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_38
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->o()V

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_3d
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 161
    :pswitch_42
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_2f
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tapjoy/internal/bd<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 218
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_8
    invoke-interface {p1, p0}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    .line 80
    :cond_b
    iget-object v0, p0, Lcom/tapjoy/internal/bi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/tapjoy/internal/bd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/tapjoy/internal/bd<",
            "TT;>;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->f()V

    .line 226
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 227
    nop

    .line 1213
    invoke-interface {p2, p0}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 229
    :cond_12
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->g()V

    .line 230
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 4

    .line 205
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->h()V

    .line 206
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 207
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->u()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 209
    :cond_15
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->i()V

    .line 210
    return-void
.end method

.method public final a()Z
    .registers 3

    .line 93
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 134
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    invoke-direct {p0}, Lcom/tapjoy/internal/bi;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    return-object p1

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 184
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bi;->a(Ljava/util/List;)V

    .line 185
    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 199
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bi;->a(Ljava/util/Map;)V

    .line 200
    return-object v0
.end method

.method public final e()Ljava/net/URL;
    .registers 3

    .line 307
    nop

    .line 2016
    const-string v0, "BASE_URI"

    invoke-interface {p0, v0}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 307
    nop

    .line 308
    if-eqz v0, :cond_1d

    .line 309
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/bi;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 311
    :cond_1d
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
