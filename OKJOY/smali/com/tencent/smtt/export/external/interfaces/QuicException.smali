.class public abstract Lcom/tencent/smtt/export/external/interfaces/QuicException;
.super Lcom/tencent/smtt/export/external/interfaces/NetworkException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract getQuicDetailedErrorCode()I
.end method
