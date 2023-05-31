.class public Lcom/tds/common/websocket/exceptions/LimitExceededException;
.super Lcom/tds/common/websocket/exceptions/InvalidDataException;
.source "LimitExceededException.java"


# static fields
.field private static final serialVersionUID:J = 0x5fdf5a6688bc28a1L


# instance fields
.field private final limit:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/exceptions/LimitExceededException;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "limit"    # I

    .line 60
    const/16 v0, 0x3f1

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(I)V

    .line 61
    iput p1, p0, Lcom/tds/common/websocket/exceptions/LimitExceededException;->limit:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 82
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 70
    const/16 v0, 0x3f1

    invoke-direct {p0, v0, p1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    .line 71
    iput p2, p0, Lcom/tds/common/websocket/exceptions/LimitExceededException;->limit:I

    .line 72
    return-void
.end method


# virtual methods
.method public getLimit()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/tds/common/websocket/exceptions/LimitExceededException;->limit:I

    return v0
.end method
