.class public Lcom/tds/common/websocket/exceptions/InvalidEncodingException;
.super Ljava/lang/RuntimeException;
.source "InvalidEncodingException.java"


# instance fields
.field private final encodingException:Ljava/io/UnsupportedEncodingException;


# direct methods
.method public constructor <init>(Ljava/io/UnsupportedEncodingException;)V
    .registers 3
    .param p1, "encodingException"    # Ljava/io/UnsupportedEncodingException;

    .line 22
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 23
    if-eqz p1, :cond_8

    .line 26
    iput-object p1, p0, Lcom/tds/common/websocket/exceptions/InvalidEncodingException;->encodingException:Ljava/io/UnsupportedEncodingException;

    .line 27
    return-void

    .line 24
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getEncodingException()Ljava/io/UnsupportedEncodingException;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/tds/common/websocket/exceptions/InvalidEncodingException;->encodingException:Ljava/io/UnsupportedEncodingException;

    return-object v0
.end method
