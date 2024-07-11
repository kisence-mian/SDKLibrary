.class final Lcom/appsflyer/internal/bb;
.super Ljava/lang/Exception;
.source ""


# direct methods
.method constructor <init>()V
    .registers 2

    .line 11
    const-string v0, "Data was not received from server yet."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
