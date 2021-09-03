.class public Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
.super Lcom/tds/common/websocket/exceptions/InvalidDataException;
.source "InvalidHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = -0x13cc1100e3e186e4L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 69
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 58
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1, p2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 80
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    .line 81
    return-void
.end method
