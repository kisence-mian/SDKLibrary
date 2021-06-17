.class public final Landroidx/test/espresso/remote/NoRemoteEspressoInstanceException;
.super Ljava/lang/RuntimeException;
.source "NoRemoteEspressoInstanceException.java"

# interfaces
.implements Landroidx/test/espresso/EspressoException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
