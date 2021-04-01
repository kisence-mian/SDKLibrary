.class public final Lcom/anythink/myoffer/d/b;
.super Lcom/anythink/core/b/e/a;


# instance fields
.field G:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/anythink/core/b/e/a;-><init>()V

    .line 16
    const-string v0, "\\{req_id\\}"

    if-nez p2, :cond_9

    const-string p2, ""

    :cond_9
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/d/b;->G:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x2

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 77
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/anythink/myoffer/d/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 86
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final e()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string v0, ""

    return-object v0
.end method
