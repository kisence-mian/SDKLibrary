.class public abstract Lcom/mintegral/msdk/base/common/b/b;
.super Ljava/lang/Object;
.source "DirectoryContext.java"


# instance fields
.field protected a:Lcom/mintegral/msdk/base/common/b/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/mintegral/msdk/base/common/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/common/b/a;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/b/a;->a(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->a:Lcom/mintegral/msdk/base/common/b/c;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/c;)V

    .line 17
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/b/b;->b()Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 19
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/common/b/a;->a(Ljava/util/List;)V

    .line 21
    :cond_1d
    iput-object v0, p0, Lcom/mintegral/msdk/base/common/b/b;->a:Lcom/mintegral/msdk/base/common/b/a;

    .line 22
    return-void
.end method

.method protected static a(Ljava/util/ArrayList;Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/common/b/a;",
            ">;",
            "Lcom/mintegral/msdk/base/common/b/c;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mintegral/msdk/base/common/b/a;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/mintegral/msdk/base/common/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/common/b/a;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/c;)V

    .line 37
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/common/b/a;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/base/common/b/a;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/b;->a:Lcom/mintegral/msdk/base/common/b/a;

    return-object v0
.end method

.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/b/a;",
            ">;"
        }
    .end annotation
.end method
