.class public final Lcom/zui/opendeviceidlibrary/BuildConfig;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
