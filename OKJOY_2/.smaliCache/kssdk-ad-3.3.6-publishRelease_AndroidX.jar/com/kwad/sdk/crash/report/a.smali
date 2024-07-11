.class public abstract Lcom/kwad/sdk/crash/report/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/crash/report/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/report/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/crash/report/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/crash/report/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/crash/report/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    :try_start_8
    iget-object v0, p0, Lcom/kwad/sdk/crash/report/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/crash/report/a$a;

    invoke-static {v1}, Lcom/kwad/sdk/crash/report/a$a;->a(Lcom/kwad/sdk/crash/report/a$a;)Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    move-result-object v2

    invoke-static {v1}, Lcom/kwad/sdk/crash/report/a$a;->b(Lcom/kwad/sdk/crash/report/a$a;)I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/crash/report/a;->b(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_29

    goto :goto_e

    :catchall_29
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_2d
    return-void
.end method

.method private b(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V
    .registers 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload msg="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExceptionCollector"

    invoke-static {v0, p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Lcom/kwad/sdk/crash/report/request/c;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)Lcom/kwad/sdk/crash/report/ReportEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/kwad/sdk/crash/report/request/b;

    invoke-direct {p1}, Lcom/kwad/sdk/crash/report/request/b;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/crash/report/request/b;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/kwad/sdk/crash/report/a;->a()V

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/crash/report/a;->b(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_15

    :catchall_7
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/kwad/sdk/crash/report/a;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/kwad/sdk/crash/report/a$a;

    invoke-direct {v1, p1, p2}, Lcom/kwad/sdk/crash/report/a$a;-><init>(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_15
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
