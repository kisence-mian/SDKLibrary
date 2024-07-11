.class public final Lcom/tapjoy/internal/in;
.super Lcom/tapjoy/internal/ik;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ik<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/tapjoy/internal/fb;

.field private final d:Lcom/tapjoy/internal/ev;

.field private final e:Lcom/tapjoy/internal/fi;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/fb;Lcom/tapjoy/internal/ev;Lcom/tapjoy/internal/fi;Ljava/lang/String;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tapjoy/internal/in;->c:Lcom/tapjoy/internal/fb;

    .line 21
    iput-object p2, p0, Lcom/tapjoy/internal/in;->d:Lcom/tapjoy/internal/ev;

    .line 22
    iput-object p3, p0, Lcom/tapjoy/internal/in;->e:Lcom/tapjoy/internal/fi;

    .line 23
    iput-object p4, p0, Lcom/tapjoy/internal/in;->f:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fc;Ljava/lang/String;)V
    .registers 5

    .line 31
    iget-object v0, p1, Lcom/tapjoy/internal/fc;->d:Lcom/tapjoy/internal/fb;

    iget-object v1, p1, Lcom/tapjoy/internal/fc;->e:Lcom/tapjoy/internal/ev;

    iget-object p1, p1, Lcom/tapjoy/internal/fc;->f:Lcom/tapjoy/internal/fi;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tapjoy/internal/in;-><init>(Lcom/tapjoy/internal/fb;Lcom/tapjoy/internal/ev;Lcom/tapjoy/internal/fi;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "api/v1/tokens"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-super {p0}, Lcom/tapjoy/internal/ik;->e()Ljava/util/Map;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/in;->c:Lcom/tapjoy/internal/fb;

    invoke-static {v2}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/fb;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/in;->d:Lcom/tapjoy/internal/ev;

    invoke-static {v2}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/ev;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/in;->e:Lcom/tapjoy/internal/fi;

    invoke-static {v2}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/fi;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/tapjoy/internal/in;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 46
    iget-object v1, p0, Lcom/tapjoy/internal/in;->f:Ljava/lang/String;

    const-string v2, "push_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_43
    return-object v0
.end method
