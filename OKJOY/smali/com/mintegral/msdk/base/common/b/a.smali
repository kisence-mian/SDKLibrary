.class public final Lcom/mintegral/msdk/base/common/b/a;
.super Ljava/lang/Object;
.source "Directory.java"


# instance fields
.field private a:Lcom/mintegral/msdk/base/common/b/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/mintegral/msdk/base/common/b/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/mintegral/msdk/base/common/b/a;)V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/a;->d:Ljava/util/List;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/b/a;->d:Ljava/util/List;

    .line 1038
    :cond_b
    iput-object p0, p1, Lcom/mintegral/msdk/base/common/b/a;->c:Lcom/mintegral/msdk/base/common/b/a;

    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/base/common/b/c;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/a;->a:Lcom/mintegral/msdk/base/common/b/c;

    return-object v0
.end method

.method public final a(Lcom/mintegral/msdk/base/common/b/c;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/b/a;->a:Lcom/mintegral/msdk/base/common/b/c;

    .line 23
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 54
    new-instance v0, Lcom/mintegral/msdk/base/common/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/common/b/a;-><init>()V

    .line 2022
    iput-object p1, v0, Lcom/mintegral/msdk/base/common/b/a;->a:Lcom/mintegral/msdk/base/common/b/c;

    .line 2030
    iput-object p2, v0, Lcom/mintegral/msdk/base/common/b/a;->b:Ljava/lang/String;

    .line 57
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/a;)V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/b/a;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 66
    :cond_8
    return-void

    .line 63
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/b/a;

    .line 64
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/a;)V

    goto :goto_d
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/mintegral/msdk/base/common/b/a;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/a;->c:Lcom/mintegral/msdk/base/common/b/a;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/a;->d:Ljava/util/List;

    return-object v0
.end method
