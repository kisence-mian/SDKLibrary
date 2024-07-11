.class public final Lcom/anythink/basead/h/c;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 24
    if-nez p2, :cond_7

    const-string p2, ""

    :cond_7
    const-string v0, "\\{req_id\\}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/h/c;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 29
    const/4 v0, 0x2

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 89
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 94
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/anythink/basead/h/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 85
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, ""

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final l()Ljava/util/Map;
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

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method
