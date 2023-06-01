.class public Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/TLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLogListenerWrapper"
.end annotation


# instance fields
.field a:I

.field b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->c:Ljava/lang/String;

    iput p1, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->a:I

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->c:Ljava/lang/String;

    iput p2, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->a:I

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 8

    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->c:Ljava/lang/String;

    const-string v1, ", "

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    iget v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2f

    :cond_24
    iget v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    :cond_3e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_45

    invoke-interface {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_45
    return-void
.end method
