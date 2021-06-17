.class final Lcom/appsflyer/internal/u$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final values:Lcom/appsflyer/internal/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/appsflyer/internal/u;

    invoke-direct {v0}, Lcom/appsflyer/internal/u;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/u$e;->values:Lcom/appsflyer/internal/u;

    return-void
.end method
