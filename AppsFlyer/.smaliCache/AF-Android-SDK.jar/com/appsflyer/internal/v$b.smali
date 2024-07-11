.class final Lcom/appsflyer/internal/v$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final values:Lcom/appsflyer/internal/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Lcom/appsflyer/internal/v;

    invoke-direct {v0}, Lcom/appsflyer/internal/v;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/v$b;->values:Lcom/appsflyer/internal/v;

    return-void
.end method
