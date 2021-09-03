.class public Lcom/tds/common/reactor/exceptions/FlowException;
.super Ljava/lang/RuntimeException;
.source "FlowException.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private resultCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "code"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    iput p1, p0, Lcom/tds/common/reactor/exceptions/FlowException;->resultCode:I

    .line 10
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 13
    iput p1, p0, Lcom/tds/common/reactor/exceptions/FlowException;->resultCode:I

    .line 14
    iput-object p2, p0, Lcom/tds/common/reactor/exceptions/FlowException;->msg:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/FlowException;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/tds/common/reactor/exceptions/FlowException;->resultCode:I

    return v0
.end method
