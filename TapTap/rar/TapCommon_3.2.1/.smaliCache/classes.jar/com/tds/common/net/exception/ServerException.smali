.class public Lcom/tds/common/net/exception/ServerException;
.super Ljava/lang/Exception;
.source "ServerException.java"


# instance fields
.field public final message:Ljava/lang/String;

.field public final responseBody:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "responseBody"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    iput p1, p0, Lcom/tds/common/net/exception/ServerException;->statusCode:I

    .line 21
    iput-object p2, p0, Lcom/tds/common/net/exception/ServerException;->message:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/tds/common/net/exception/ServerException;->responseBody:Ljava/lang/String;

    .line 23
    return-void
.end method
