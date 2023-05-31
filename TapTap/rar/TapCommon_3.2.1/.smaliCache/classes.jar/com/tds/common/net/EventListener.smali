.class public abstract Lcom/tds/common/net/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public callFailed(Ljava/lang/String;Ljava/io/IOException;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 67
    return-void
.end method

.method public callStart(Lcom/tds/common/net/TdsHttp$Call;)V
    .registers 2
    .param p1, "call"    # Lcom/tds/common/net/TdsHttp$Call;

    .line 50
    return-void
.end method
