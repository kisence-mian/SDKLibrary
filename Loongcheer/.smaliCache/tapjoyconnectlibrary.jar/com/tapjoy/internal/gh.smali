.class public abstract Lcom/tapjoy/internal/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gh$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/internal/gh$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Lcom/tapjoy/internal/gh;

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/tapjoy/internal/gh$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gh$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gh;->b:Ljava/lang/ThreadLocal;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/internal/gh;->d:Z

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/gh;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 3

    .line 191
    new-instance v0, Lcom/tapjoy/internal/gh$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gh$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->a()Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/tapjoy/internal/gh;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/gj;)V
    .registers 3

    .line 87
    sget-object v0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gh;

    if-nez v0, :cond_11

    .line 88
    sput-object p0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gh;

    .line 89
    sget-boolean v0, Lcom/tapjoy/internal/gh;->d:Z

    if-eqz v0, :cond_11

    .line 90
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/gj;->a(J)V

    .line 93
    :cond_11
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tapjoy/internal/gh$a;)V
    .registers 5

    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_22

    .line 229
    iget-object v2, p1, Lcom/tapjoy/internal/gh$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 230
    sget-object v0, Lcom/tapjoy/internal/gh;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 232
    :cond_18
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    iget-object p0, p1, Lcom/tapjoy/internal/gh$a;->a:Ljava/lang/String;

    aput-object p0, v2, v1

    return-void

    .line 236
    :cond_22
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    .line 238
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 24
    invoke-static {p0, p1, p2}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/Map;)V
    .registers 3
    .param p1    # Ljava/util/TreeMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 163
    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p0, p1, p2}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    return-void
.end method

.method public static a(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 139
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tapjoy/internal/gh;->a:Ljava/util/Set;

    .line 141
    return-void

    .line 134
    :cond_11
    :goto_11
    const/4 p0, 0x0

    sput-object p0, Lcom/tapjoy/internal/gh;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Z)V
    .registers 4

    .line 107
    sget-boolean v0, Lcom/tapjoy/internal/gh;->d:Z

    if-eq v0, p0, :cond_17

    .line 108
    sput-boolean p0, Lcom/tapjoy/internal/gh;->d:Z

    .line 109
    sget-object v0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gh;

    if-eqz v0, :cond_17

    .line 110
    if-eqz p0, :cond_14

    .line 111
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/gh;->a(J)V

    return-void

    .line 113
    :cond_14
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh;->a()V

    .line 117
    :cond_17
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 2

    .line 201
    sget-object v0, Lcom/tapjoy/internal/gh;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gh$a;

    .line 202
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->b()Lcom/tapjoy/internal/gh$a;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance v0, Lcom/tapjoy/internal/gh$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gh$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/tapjoy/internal/gh;->a:Ljava/util/Set;

    .line 146
    if-eqz v0, :cond_b

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    return-void

    .line 149
    :cond_b
    sget-boolean v0, Lcom/tapjoy/internal/gh;->d:Z

    if-eqz v0, :cond_1d

    sget-object v1, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gh;

    if-eqz v1, :cond_1d

    .line 150
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/gh;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    :cond_1d
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 2

    .line 210
    sget-object v0, Lcom/tapjoy/internal/gh;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/gh$a;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 2

    .line 218
    sget-object v0, Lcom/tapjoy/internal/gh;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/gh$a;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 2

    .line 244
    new-instance v0, Lcom/tapjoy/internal/gh$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gh$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(J)V
.end method

.method protected abstract a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method
