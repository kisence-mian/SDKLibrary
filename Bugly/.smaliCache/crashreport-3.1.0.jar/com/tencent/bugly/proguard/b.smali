.class public Lcom/tencent/bugly/proguard/b;
.super Ljava/lang/RuntimeException;
.source "BUGLY"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
