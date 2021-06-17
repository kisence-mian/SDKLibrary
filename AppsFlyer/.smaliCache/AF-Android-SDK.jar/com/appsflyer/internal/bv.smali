.class public final Lcom/appsflyer/internal/bv;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AFKeystoreWrapper:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    const-string v0, "https://%sapp.%s"

    sput-object v0, Lcom/appsflyer/internal/bv;->AFKeystoreWrapper:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
