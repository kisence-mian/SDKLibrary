.class public Lcom/efs/sdk/base/a/h/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/a/h/a/b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/efs/sdk/base/a/h/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/efs/sdk/base/a/h/a/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/a/h/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/efs/sdk/base/a/h/a/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/efs/sdk/base/a/h/a/e;->b:Lcom/efs/sdk/base/a/h/a/c;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    nop

    .line 57
    nop

    .line 1069
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1071
    goto :goto_9

    .line 58
    :cond_13
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->b:Lcom/efs/sdk/base/a/h/a/c;

    invoke-interface {v1}, Lcom/efs/sdk/base/a/h/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 59
    nop

    .line 1075
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/base/a/h/a/b;

    .line 1076
    iget-object v3, p0, Lcom/efs/sdk/base/a/h/a/e;->b:Lcom/efs/sdk/base/a/h/a/c;

    invoke-interface {v2, v3, v0}, Lcom/efs/sdk/base/a/h/a/b;->a(Lcom/efs/sdk/base/a/h/a/c;Ljava/lang/Object;)V

    .line 1077
    goto :goto_20

    .line 60
    :cond_32
    nop

    .line 1081
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/base/a/h/a/b;

    .line 1082
    invoke-interface {v2, v0}, Lcom/efs/sdk/base/a/h/a/b;->result(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4a

    .line 1083
    goto :goto_39

    .line 64
    :cond_49
    goto :goto_64

    .line 61
    :catchall_4a
    move-exception v1

    .line 62
    nop

    .line 2031
    const-string v2, "efs.base"

    const-string v3, "efs.util.concurrent"

    invoke-static {v2, v3, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    nop

    .line 2087
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2089
    goto :goto_5a

    .line 65
    :cond_64
    :goto_64
    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/a/h/a/b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method

.method public run()V
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/h/a/e;->a()Ljava/lang/Object;

    .line 52
    return-void
.end method
