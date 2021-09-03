.class public Lcom/tds/common/tracker/exceptions/ModelConvertException;
.super Ljava/lang/Exception;
.source "ModelConvertException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
