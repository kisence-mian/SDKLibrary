.class public final Lokhttp3/internal/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static userAgent()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    const-string v0, "okhttp/3.12.1"

    return-object v0
.end method
