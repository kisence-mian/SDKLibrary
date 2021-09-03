.class final Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;
.super Ljava/lang/Object;
.source "NotificationLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/NotificationLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnErrorSentinel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field final e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    .line 61
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification=>Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
