.class public final Lcom/anythink/core/common/e/e;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/anythink/core/common/e/e;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 27
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

    .line 87
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 92
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/anythink/core/common/e/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 83
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

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, ""

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 72
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

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
